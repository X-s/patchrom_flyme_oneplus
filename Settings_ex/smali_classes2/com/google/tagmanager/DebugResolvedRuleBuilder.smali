.class Lcom/google/tagmanager/DebugResolvedRuleBuilder;
.super Ljava/lang/Object;
.source "DebugResolvedRuleBuilder.java"

# interfaces
.implements Lcom/google/tagmanager/ResolvedRuleBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/DebugResolvedRuleBuilder$DebugResolvedFunctionCallListTranslator;
    }
.end annotation


# instance fields
.field addMacrosHolder:Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;

.field addTagsHolder:Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;

.field removeMacrosHolder:Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;

.field removeTagsHolder:Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;

.field resolvedRule:Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;


# direct methods
.method public constructor <init>(Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/tagmanager/DebugResolvedRuleBuilder;->resolvedRule:Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    .line 28
    new-instance v0, Lcom/google/tagmanager/DebugResolvedRuleBuilder$DebugResolvedFunctionCallListTranslator;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/tagmanager/DebugResolvedRuleBuilder$DebugResolvedFunctionCallListTranslator;-><init>(Lcom/google/tagmanager/DebugResolvedRuleBuilder;I)V

    iput-object v0, p0, Lcom/google/tagmanager/DebugResolvedRuleBuilder;->addMacrosHolder:Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;

    .line 30
    new-instance v0, Lcom/google/tagmanager/DebugResolvedRuleBuilder$DebugResolvedFunctionCallListTranslator;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/google/tagmanager/DebugResolvedRuleBuilder$DebugResolvedFunctionCallListTranslator;-><init>(Lcom/google/tagmanager/DebugResolvedRuleBuilder;I)V

    iput-object v0, p0, Lcom/google/tagmanager/DebugResolvedRuleBuilder;->removeMacrosHolder:Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;

    .line 32
    new-instance v0, Lcom/google/tagmanager/DebugResolvedRuleBuilder$DebugResolvedFunctionCallListTranslator;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/google/tagmanager/DebugResolvedRuleBuilder$DebugResolvedFunctionCallListTranslator;-><init>(Lcom/google/tagmanager/DebugResolvedRuleBuilder;I)V

    iput-object v0, p0, Lcom/google/tagmanager/DebugResolvedRuleBuilder;->addTagsHolder:Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;

    .line 34
    new-instance v0, Lcom/google/tagmanager/DebugResolvedRuleBuilder$DebugResolvedFunctionCallListTranslator;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/google/tagmanager/DebugResolvedRuleBuilder$DebugResolvedFunctionCallListTranslator;-><init>(Lcom/google/tagmanager/DebugResolvedRuleBuilder;I)V

    iput-object v0, p0, Lcom/google/tagmanager/DebugResolvedRuleBuilder;->removeTagsHolder:Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;

    .line 36
    return-void
.end method

.method public static translateExpandedFunctionCall(Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;)Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;
    .locals 5

    .prologue
    .line 83
    new-instance v2, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-direct {v2}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;-><init>()V

    .line 84
    invoke-virtual {p0}, Lcom/google/tagmanager/ResourceUtil$ExpandedFunctionCall;->getProperties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    return-object v2

    .line 84
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 85
    new-instance v4, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    invoke-direct {v4}, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;-><init>()V

    .line 86
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v4, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->key:Ljava/lang/String;

    .line 87
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    invoke-static {v0}, Lcom/google/tagmanager/DebugValueBuilder;->copyImmutableValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v0

    iput-object v0, v4, Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;->value:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 88
    iget-object v0, v2, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties:[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    invoke-static {v0, v4}, Lcom/google/tagmanager/ArrayUtils;->appendToArray([Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;)[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    move-result-object v0

    iput-object v0, v2, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;->properties:[Lcom/google/analytics/containertag/proto/Debug$ResolvedProperty;

    goto :goto_0
.end method


# virtual methods
.method public createNegativePredicate()Lcom/google/tagmanager/ResolvedFunctionCallBuilder;
    .locals 3

    .prologue
    .line 40
    new-instance v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;-><init>()V

    .line 41
    iget-object v1, p0, Lcom/google/tagmanager/DebugResolvedRuleBuilder;->resolvedRule:Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    iget-object v2, p0, Lcom/google/tagmanager/DebugResolvedRuleBuilder;->resolvedRule:Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    iget-object v2, v2, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-static {v2, v0}, Lcom/google/tagmanager/ArrayUtils;->appendToArray([Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;)[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    move-result-object v2

    iput-object v2, v1, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->negativePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 43
    new-instance v1, Lcom/google/tagmanager/DebugResolvedFunctionCallBuilder;

    invoke-direct {v1, v0}, Lcom/google/tagmanager/DebugResolvedFunctionCallBuilder;-><init>(Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;)V

    return-object v1
.end method

.method public createPositivePredicate()Lcom/google/tagmanager/ResolvedFunctionCallBuilder;
    .locals 3

    .prologue
    .line 48
    new-instance v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;-><init>()V

    .line 49
    iget-object v1, p0, Lcom/google/tagmanager/DebugResolvedRuleBuilder;->resolvedRule:Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    iget-object v2, p0, Lcom/google/tagmanager/DebugResolvedRuleBuilder;->resolvedRule:Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    iget-object v2, v2, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    invoke-static {v2, v0}, Lcom/google/tagmanager/ArrayUtils;->appendToArray([Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;)[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    move-result-object v2

    iput-object v2, v1, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->positivePredicates:[Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;

    .line 51
    new-instance v1, Lcom/google/tagmanager/DebugResolvedFunctionCallBuilder;

    invoke-direct {v1, v0}, Lcom/google/tagmanager/DebugResolvedFunctionCallBuilder;-><init>(Lcom/google/analytics/containertag/proto/Debug$ResolvedFunctionCall;)V

    return-object v1
.end method

.method public getAddedMacroFunctions()Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/tagmanager/DebugResolvedRuleBuilder;->addMacrosHolder:Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;

    return-object v0
.end method

.method public getAddedTagFunctions()Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/tagmanager/DebugResolvedRuleBuilder;->addTagsHolder:Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;

    return-object v0
.end method

.method public getRemovedMacroFunctions()Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/tagmanager/DebugResolvedRuleBuilder;->removeMacrosHolder:Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;

    return-object v0
.end method

.method public getRemovedTagFunctions()Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/tagmanager/DebugResolvedRuleBuilder;->removeTagsHolder:Lcom/google/tagmanager/ResolvedFunctionCallTranslatorList;

    return-object v0
.end method

.method public setValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/tagmanager/DebugResolvedRuleBuilder;->resolvedRule:Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;

    invoke-static {p1}, Lcom/google/tagmanager/DebugValueBuilder;->copyImmutableValue(Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;)Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    move-result-object v1

    iput-object v1, v0, Lcom/google/analytics/containertag/proto/Debug$ResolvedRule;->result:Lcom/google/analytics/midtier/proto/containertag/TypeSystem$Value;

    .line 77
    return-void
.end method
