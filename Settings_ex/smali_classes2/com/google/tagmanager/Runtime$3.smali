.class Lcom/google/tagmanager/Runtime$3;
.super Ljava/lang/Object;
.source "Runtime.java"

# interfaces
.implements Lcom/google/tagmanager/Runtime$AddRemoveSetPopulator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/tagmanager/Runtime;->calculateMacrosToRun(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Lcom/google/tagmanager/RuleEvaluationStepInfoBuilder;)Lcom/google/tagmanager/ObjectAndStatic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/tagmanager/Runtime;

.field final synthetic val$addMacroRuleNames:Ljava/util/Map;

.field final synthetic val$addMacros:Ljava/util/Map;

.field final synthetic val$removeMacroRuleNames:Ljava/util/Map;

.field final synthetic val$removeMacros:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/tagmanager/Runtime;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/google/tagmanager/Runtime$3;->this$0:Lcom/google/tagmanager/Runtime;

    iput-object p2, p0, Lcom/google/tagmanager/Runtime$3;->val$addMacros:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/tagmanager/Runtime$3;->val$addMacroRuleNames:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/tagmanager/Runtime$3;->val$removeMacros:Ljava/util/Map;

    iput-object p5, p0, Lcom/google/tagmanager/Runtime$3;->val$removeMacroRuleNames:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rulePassed(Lcom/google/tagmanager/ResourceUtil$ExpandedRule;Ljava/util/Set;Ljava/util/Set;Lcom/google/tagmanager/ResolvedRuleBuilder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedRule;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;",
            ">;",
            "Lcom/google/tagmanager/ResolvedRuleBuilder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 410
    iget-object v0, p0, Lcom/google/tagmanager/Runtime$3;->val$addMacros:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 411
    iget-object v1, p0, Lcom/google/tagmanager/Runtime$3;->val$addMacroRuleNames:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 412
    if-nez v0, :cond_0

    .line 419
    :goto_0
    iget-object v0, p0, Lcom/google/tagmanager/Runtime$3;->val$removeMacros:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 420
    iget-object v1, p0, Lcom/google/tagmanager/Runtime$3;->val$removeMacroRuleNames:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 421
    if-nez v0, :cond_1

    .line 428
    :goto_1
    return-void

    .line 413
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 416
    invoke-interface {p4}, Lcom/google/tagmanager/ResolvedRuleBuilder;->getAddedMacroFunctions()Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;->translateAndAddAll(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 422
    :cond_1
    invoke-interface {p3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 425
    invoke-interface {p4}, Lcom/google/tagmanager/ResolvedRuleBuilder;->getRemovedMacroFunctions()Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;->translateAndAddAll(Ljava/util/List;Ljava/util/List;)V

    goto :goto_1
.end method
