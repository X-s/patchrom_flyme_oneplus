.class public abstract Lcom/oneplus/screenshot/longshot/match/BaseMatcher;
.super Ljava/lang/Object;
.source "BaseMatcher.java"

# interfaces
.implements Lcom/oneplus/screenshot/longshot/match/Matcher;


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseMatcher"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

.field protected mIndex:I

.field protected mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

.field protected mOffsetCurr:I

.field protected mOffsetLast:I

.field protected mSameDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

.field protected mSize:I

.field protected mStep:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "index"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mLastDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    .line 15
    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mCurrDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    .line 16
    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mSameDumper:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;

    .line 17
    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mContext:Landroid/content/Context;

    .line 18
    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mIndex:I

    .line 19
    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mSize:I

    .line 20
    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mStep:I

    .line 21
    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mOffsetLast:I

    .line 22
    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mOffsetCurr:I

    .line 28
    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mContext:Landroid/content/Context;

    .line 29
    iput p2, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mIndex:I

    .line 30
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->canDump()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->FILE:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->getValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mStep:I

    .line 32
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->createDumper()V

    .line 36
    :goto_0
    return-void

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->getStep()I

    move-result v0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mStep:I

    goto :goto_0
.end method


# virtual methods
.method protected abstract canDump()Z
.end method

.method protected abstract createDumper()V
.end method

.method protected getCurrTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "Curr"

    return-object v0
.end method

.method protected getLastTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "Last"

    return-object v0
.end method

.method public getOffsetCurr()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mOffsetCurr:I

    return v0
.end method

.method public getOffsetLast()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mOffsetLast:I

    return v0
.end method

.method protected getStep()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract getTag()Ljava/lang/String;
.end method
