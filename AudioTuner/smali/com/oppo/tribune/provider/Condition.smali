.class public Lcom/oppo/tribune/provider/Condition;
.super Ljava/lang/Object;
.source "Condition.java"


# instance fields
.field private final mBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "condition"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/oppo/tribune/provider/Condition;->mBuilder:Ljava/lang/StringBuilder;

    .line 24
    iget-object v0, p0, Lcom/oppo/tribune/provider/Condition;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/oppo/tribune/provider/Condition;->oneCondition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 28
    invoke-static {p1, p2}, Lcom/oppo/tribune/provider/Condition;->oneCondition(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 32
    invoke-static {p1, p2, p3}, Lcom/oppo/tribune/provider/Condition;->oneCondition(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {p1, p2}, Lcom/oppo/tribune/provider/Condition;->oneCondition(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oppo/tribune/provider/Condition;-><init>(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method private andCondition(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "condition"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 110
    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 111
    const-string v0, " AND (%s)"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 110
    goto :goto_0
.end method

.method private oneCondition(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "condition"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 90
    const-string v0, "(%s)"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 89
    goto :goto_0
.end method

.method private static oneCondition(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 94
    invoke-static {p0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 95
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

    .line 94
    goto :goto_0
.end method

.method private static oneCondition(Ljava/lang/String;J)Ljava/lang/String;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 99
    invoke-static {p0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 100
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

    .line 99
    goto :goto_0
.end method

.method private static oneCondition(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 104
    invoke-static {p0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 105
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
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

    .line 104
    goto :goto_0
.end method

.method private orCondition(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "condition"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 115
    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 116
    const-string v0, " OR (%s)"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 115
    goto :goto_0
.end method


# virtual methods
.method public appendAnd(Ljava/lang/String;)Lcom/oppo/tribune/provider/Condition;
    .locals 2
    .param p1, "condition"    # Ljava/lang/String;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oppo/tribune/provider/Condition;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/oppo/tribune/provider/Condition;->andCondition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    return-object p0
.end method

.method public appendAnd(Ljava/lang/String;I)Lcom/oppo/tribune/provider/Condition;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 50
    invoke-static {p1, p2}, Lcom/oppo/tribune/provider/Condition;->oneCondition(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "condition":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/oppo/tribune/provider/Condition;->appendAnd(Ljava/lang/String;)Lcom/oppo/tribune/provider/Condition;

    move-result-object v1

    return-object v1
.end method

.method public appendAnd(Ljava/lang/String;J)Lcom/oppo/tribune/provider/Condition;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 55
    invoke-static {p1, p2, p3}, Lcom/oppo/tribune/provider/Condition;->oneCondition(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "condition":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/oppo/tribune/provider/Condition;->appendAnd(Ljava/lang/String;)Lcom/oppo/tribune/provider/Condition;

    move-result-object v1

    return-object v1
.end method

.method public appendAnd(Ljava/lang/String;Ljava/lang/String;)Lcom/oppo/tribune/provider/Condition;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-static {p1, p2}, Lcom/oppo/tribune/provider/Condition;->oneCondition(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "condition":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/oppo/tribune/provider/Condition;->appendAnd(Ljava/lang/String;)Lcom/oppo/tribune/provider/Condition;

    move-result-object v1

    return-object v1
.end method

.method public appendOr(Ljava/lang/String;)Lcom/oppo/tribune/provider/Condition;
    .locals 2
    .param p1, "condition"    # Ljava/lang/String;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/oppo/tribune/provider/Condition;->mBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/oppo/tribune/provider/Condition;->orCondition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    return-object p0
.end method

.method public appendOr(Ljava/lang/String;I)Lcom/oppo/tribune/provider/Condition;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 65
    invoke-static {p1, p2}, Lcom/oppo/tribune/provider/Condition;->oneCondition(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "condition":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/oppo/tribune/provider/Condition;->appendOr(Ljava/lang/String;)Lcom/oppo/tribune/provider/Condition;

    move-result-object v1

    return-object v1
.end method

.method public appendOr(Ljava/lang/String;J)Lcom/oppo/tribune/provider/Condition;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 70
    invoke-static {p1, p2, p3}, Lcom/oppo/tribune/provider/Condition;->oneCondition(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "condition":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/oppo/tribune/provider/Condition;->appendOr(Ljava/lang/String;)Lcom/oppo/tribune/provider/Condition;

    move-result-object v1

    return-object v1
.end method

.method public appendOr(Ljava/lang/String;Ljava/lang/String;)Lcom/oppo/tribune/provider/Condition;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-static {p1, p2}, Lcom/oppo/tribune/provider/Condition;->oneCondition(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "condition":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/oppo/tribune/provider/Condition;->appendOr(Ljava/lang/String;)Lcom/oppo/tribune/provider/Condition;

    move-result-object v1

    return-object v1
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oppo/tribune/provider/Condition;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oppo/tribune/provider/Condition;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 81
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/oppo/tribune/provider/Condition;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
