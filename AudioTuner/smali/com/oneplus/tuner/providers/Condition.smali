.class public Lcom/oneplus/tuner/providers/Condition;
.super Ljava/lang/Object;
.source "Condition.java"


# instance fields
.field private final mBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "condition"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/oneplus/tuner/providers/Condition;->mBuilder:Ljava/lang/StringBuilder;

    .line 11
    iget-object v0, p0, Lcom/oneplus/tuner/providers/Condition;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/oneplus/tuner/providers/Condition;->oneCondition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 15
    invoke-static {p1, p2}, Lcom/oneplus/tuner/providers/Condition;->oneCondition(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/tuner/providers/Condition;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 19
    invoke-static {p1, p2, p3}, Lcom/oneplus/tuner/providers/Condition;->oneCondition(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/tuner/providers/Condition;-><init>(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-static {p1, p2}, Lcom/oneplus/tuner/providers/Condition;->oneCondition(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/tuner/providers/Condition;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method private andCondition(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "condition"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 97
    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 98
    const-string v0, " AND (%s)"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 97
    goto :goto_0
.end method

.method private oneCondition(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "condition"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 76
    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 77
    const-string v0, "(%s)"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 76
    goto :goto_0
.end method

.method private static oneCondition(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 81
    invoke-static {p0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 82
    const-string v0, "(%s=%d)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 81
    goto :goto_0
.end method

.method private static oneCondition(Ljava/lang/String;J)Ljava/lang/String;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 86
    invoke-static {p0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 87
    const-string v0, "(%s=%d)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 86
    goto :goto_0
.end method

.method private static oneCondition(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 91
    invoke-static {p0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 92
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v0, "(%s=\'%s\')"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    aput-object p1, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 91
    goto :goto_0
.end method

.method private orCondition(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "condition"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 102
    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 103
    const-string v0, " OR (%s)"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 102
    goto :goto_0
.end method


# virtual methods
.method public appendAnd(Ljava/lang/String;)Lcom/oneplus/tuner/providers/Condition;
    .locals 2
    .param p1, "condition"    # Ljava/lang/String;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/oneplus/tuner/providers/Condition;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/oneplus/tuner/providers/Condition;->andCondition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    return-object p0
.end method

.method public appendAnd(Ljava/lang/String;I)Lcom/oneplus/tuner/providers/Condition;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 37
    invoke-static {p1, p2}, Lcom/oneplus/tuner/providers/Condition;->oneCondition(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "condition":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/providers/Condition;->appendAnd(Ljava/lang/String;)Lcom/oneplus/tuner/providers/Condition;

    move-result-object v1

    return-object v1
.end method

.method public appendAnd(Ljava/lang/String;J)Lcom/oneplus/tuner/providers/Condition;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 42
    invoke-static {p1, p2, p3}, Lcom/oneplus/tuner/providers/Condition;->oneCondition(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "condition":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/providers/Condition;->appendAnd(Ljava/lang/String;)Lcom/oneplus/tuner/providers/Condition;

    move-result-object v1

    return-object v1
.end method

.method public appendAnd(Ljava/lang/String;Ljava/lang/String;)Lcom/oneplus/tuner/providers/Condition;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {p1, p2}, Lcom/oneplus/tuner/providers/Condition;->oneCondition(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "condition":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/providers/Condition;->appendAnd(Ljava/lang/String;)Lcom/oneplus/tuner/providers/Condition;

    move-result-object v1

    return-object v1
.end method

.method public appendOr(Ljava/lang/String;)Lcom/oneplus/tuner/providers/Condition;
    .locals 2
    .param p1, "condition"    # Ljava/lang/String;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/oneplus/tuner/providers/Condition;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/oneplus/tuner/providers/Condition;->orCondition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    return-object p0
.end method

.method public appendOr(Ljava/lang/String;I)Lcom/oneplus/tuner/providers/Condition;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 52
    invoke-static {p1, p2}, Lcom/oneplus/tuner/providers/Condition;->oneCondition(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "condition":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/providers/Condition;->appendOr(Ljava/lang/String;)Lcom/oneplus/tuner/providers/Condition;

    move-result-object v1

    return-object v1
.end method

.method public appendOr(Ljava/lang/String;J)Lcom/oneplus/tuner/providers/Condition;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 57
    invoke-static {p1, p2, p3}, Lcom/oneplus/tuner/providers/Condition;->oneCondition(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "condition":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/providers/Condition;->appendOr(Ljava/lang/String;)Lcom/oneplus/tuner/providers/Condition;

    move-result-object v1

    return-object v1
.end method

.method public appendOr(Ljava/lang/String;Ljava/lang/String;)Lcom/oneplus/tuner/providers/Condition;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-static {p1, p2}, Lcom/oneplus/tuner/providers/Condition;->oneCondition(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "condition":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/providers/Condition;->appendOr(Ljava/lang/String;)Lcom/oneplus/tuner/providers/Condition;

    move-result-object v1

    return-object v1
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/oneplus/tuner/providers/Condition;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oneplus/tuner/providers/Condition;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 68
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/oneplus/tuner/providers/Condition;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
