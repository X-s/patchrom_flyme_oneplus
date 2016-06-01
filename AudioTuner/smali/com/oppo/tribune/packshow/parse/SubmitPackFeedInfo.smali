.class public Lcom/oppo/tribune/packshow/parse/SubmitPackFeedInfo;
.super Ljava/lang/Object;
.source "SubmitPackFeedInfo.java"


# instance fields
.field private mCategoryId:I

.field private mConfigIntro:Ljava/lang/String;

.field private mConfigName:Ljava/lang/String;

.field private mConfigParams:Ljava/lang/String;

.field private mTypeId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "type_id"    # I
    .param p2, "config_name"    # Ljava/lang/String;
    .param p3, "config_intro"    # Ljava/lang/String;
    .param p4, "config_params"    # Ljava/lang/String;
    .param p5, "category_id"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/oppo/tribune/packshow/parse/SubmitPackFeedInfo;->mTypeId:I

    .line 29
    iput-object p2, p0, Lcom/oppo/tribune/packshow/parse/SubmitPackFeedInfo;->mConfigName:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/oppo/tribune/packshow/parse/SubmitPackFeedInfo;->mConfigIntro:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/oppo/tribune/packshow/parse/SubmitPackFeedInfo;->mConfigParams:Ljava/lang/String;

    .line 32
    iput p5, p0, Lcom/oppo/tribune/packshow/parse/SubmitPackFeedInfo;->mCategoryId:I

    .line 33
    return-void
.end method


# virtual methods
.method public getCategoryId()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/oppo/tribune/packshow/parse/SubmitPackFeedInfo;->mCategoryId:I

    return v0
.end method

.method public getConfigIntro()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oppo/tribune/packshow/parse/SubmitPackFeedInfo;->mConfigIntro:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/oppo/tribune/packshow/parse/SubmitPackFeedInfo;->mConfigName:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigParams()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/oppo/tribune/packshow/parse/SubmitPackFeedInfo;->mConfigParams:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeId()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/oppo/tribune/packshow/parse/SubmitPackFeedInfo;->mTypeId:I

    return v0
.end method

.method public setCategoryId(I)V
    .locals 0
    .param p1, "mCategoryId"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/oppo/tribune/packshow/parse/SubmitPackFeedInfo;->mCategoryId:I

    .line 73
    return-void
.end method

.method public setConfigIntro(Ljava/lang/String;)V
    .locals 0
    .param p1, "mConfigIntro"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/oppo/tribune/packshow/parse/SubmitPackFeedInfo;->mConfigIntro:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setConfigName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mConfigName"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/oppo/tribune/packshow/parse/SubmitPackFeedInfo;->mConfigName:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setConfigParams(Ljava/lang/String;)V
    .locals 0
    .param p1, "mConfigParams"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/oppo/tribune/packshow/parse/SubmitPackFeedInfo;->mConfigParams:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setTypeId(I)V
    .locals 0
    .param p1, "mTypeId"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/oppo/tribune/packshow/parse/SubmitPackFeedInfo;->mTypeId:I

    .line 41
    return-void
.end method
