.class public Lcom/oppo/tribune/packshow/parse/SubmitBgImgModel$SubmitBgInfo;
.super Ljava/lang/Object;
.source "SubmitBgImgModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/packshow/parse/SubmitBgImgModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubmitBgInfo"
.end annotation


# static fields
.field public static final TYPE_BY_RECOMMEN:I = 0x1

.field public static final TYPE_BY_USERTAKE:I = 0x2


# instance fields
.field public backgroundId:Ljava/lang/String;

.field public imgPath:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    return-void
.end method


# virtual methods
.method public getBackgroundId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/oppo/tribune/packshow/parse/SubmitBgImgModel$SubmitBgInfo;->backgroundId:Ljava/lang/String;

    return-object v0
.end method

.method public getImgPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/oppo/tribune/packshow/parse/SubmitBgImgModel$SubmitBgInfo;->imgPath:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/oppo/tribune/packshow/parse/SubmitBgImgModel$SubmitBgInfo;->type:I

    return v0
.end method

.method public setBackgroundId(Ljava/lang/String;)V
    .locals 0
    .param p1, "backgroundId"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/oppo/tribune/packshow/parse/SubmitBgImgModel$SubmitBgInfo;->backgroundId:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setImgPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "imgPath"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/oppo/tribune/packshow/parse/SubmitBgImgModel$SubmitBgInfo;->imgPath:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 150
    iput p1, p0, Lcom/oppo/tribune/packshow/parse/SubmitBgImgModel$SubmitBgInfo;->type:I

    .line 151
    return-void
.end method
