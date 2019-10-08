function metric(ll::Likelihood,y_test,y_pred,sig_pred)
    if ll isa RegressionLikelihood
        RMSE(y_pred,y_test)
    elseif ll isa ClassificationLikelihood
        accuracy(y_pred,y_test)
    else
        @error "No metric know for this likelihood"
    end
end

function accuracy(y_pred::AbstractVector,y_test::AbstractVector)
    mean(sign.(y_pred.-0.5).==y_test)
end

function RMSE(y_pred::AbstractVector,y_test::AbstractVector)
    sqrt(mean(abs2,y_pred-y_test))
end

function GaussianNLL(y_pred::AbstractVector,σ_pred::AbstractVector,y_test::AbstractVector)
    -mean(logpdf.(Normal.(y_pred,σ_pred),y_test))
end

function GaussianLogLikelihood(y_pred,y_test,noise)
    return -(-0.5*norm(y_pred-y_test)/noise^2-0.5*length(y_test)*log(2*π*noise^2))
end

function LogisticNLL(y_pred::AbstractVector,y_test::AbstractVector)
    -mean(vcat(log.(y_pred[y_test.==1]),log.(1.0.-y_pred[y_test.==-1])))
end

function nll(ll::Likelihood,y_test::AbstractVector,y_pred::AbstractVector,sig_pred::AbstractVector)
    mean(AugmentedGaussianProcesses.logpdf.(ll,y_test,y_pred))
end
