.class public Lcom/oppo/tribune/ui/wheelview/NumberWheelAdapter;
.super Ljava/lang/Object;
.source "NumberWheelAdapter.java"

# interfaces
.implements Lcom/oppo/tribune/ui/wheelview/WheelAdapter;


# static fields
.field public static final DEFAULT_LENGTH:I = -0x1


# instance fields
.field private mFromNum:I

.field private mToNum:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "fromNum"    # I
    .param p2, "toNum"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/oppo/tribune/ui/wheelview/NumberWheelAdapter;->mFromNum:I

    .line 17
    iput p2, p0, Lcom/oppo/tribune/ui/wheelview/NumberWheelAdapter;->mToNum:I

    .line 18
    return-void
.end method


# virtual methods
.method public getItem(I)Ljava/lang/String;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 30
    iget v2, p0, Lcom/oppo/tribune/ui/wheelview/NumberWheelAdapter;->mFromNum:I

    iget v3, p0, Lcom/oppo/tribune/ui/wheelview/NumberWheelAdapter;->mToNum:I

    if-le v2, v3, :cond_0

    .line 31
    iget v2, p0, Lcom/oppo/tribune/ui/wheelview/NumberWheelAdapter;->mFromNum:I

    sub-int v1, v2, p1

    .line 38
    .local v1, "value":I
    :goto_0
    const/4 v0, 0x0

    .line 39
    .local v0, "item":Ljava/lang/String;
    if-lez v1, :cond_2

    const/16 v2, 0xa

    if-ge v1, v2, :cond_2

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    :goto_1
    return-object v0

    .line 32
    .end local v0    # "item":Ljava/lang/String;
    .end local v1    # "value":I
    :cond_0
    iget v2, p0, Lcom/oppo/tribune/ui/wheelview/NumberWheelAdapter;->mFromNum:I

    iget v3, p0, Lcom/oppo/tribune/ui/wheelview/NumberWheelAdapter;->mToNum:I

    if-ge v2, v3, :cond_1

    .line 33
    iget v2, p0, Lcom/oppo/tribune/ui/wheelview/NumberWheelAdapter;->mFromNum:I

    add-int v1, v2, p1

    .restart local v1    # "value":I
    goto :goto_0

    .line 35
    .end local v1    # "value":I
    :cond_1
    iget v1, p0, Lcom/oppo/tribune/ui/wheelview/NumberWheelAdapter;->mFromNum:I

    .restart local v1    # "value":I
    goto :goto_0

    .line 42
    .restart local v0    # "item":Ljava/lang/String;
    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getItemsCount()I
    .locals 3

    .prologue
    .line 22
    iget v1, p0, Lcom/oppo/tribune/ui/wheelview/NumberWheelAdapter;->mFromNum:I

    iget v2, p0, Lcom/oppo/tribune/ui/wheelview/NumberWheelAdapter;->mToNum:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 23
    .local v0, "count":I
    add-int/lit8 v1, v0, 0x1

    return v1
.end method

.method public getMaximumLength()I
    .locals 1

    .prologue
    .line 49
    const/4 v0, -0x1

    return v0
.end method
