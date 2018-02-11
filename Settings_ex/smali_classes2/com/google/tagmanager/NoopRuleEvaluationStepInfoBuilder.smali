.class Lcom/google/tagmanager/NoopRuleEvaluationStepInfoBuilder;
.super Ljava/lang/Object;
.source "NoopRuleEvaluationStepInfoBuilder.java"

# interfaces
.implements Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createResolvedRuleBuilder()Lcom/google/tagmanager/ResolvedRuleBuilder;
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/google/tagmanager/NoopResolvedRuleBuilder;

    invoke-direct {v0}, Lcom/google/tagmanager/NoopResolvedRuleBuilder;-><init>()V

    return-object v0
.end method

.method public setEnabledFunctions(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    return-void
.end method
