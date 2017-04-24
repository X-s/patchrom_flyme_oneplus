.class public Lcom/nxp/nfc/gsma/internal/NxpOffHostService;
.super Ljava/lang/Object;
.source "NxpOffHostService.java"


# instance fields
.field public mAidGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;"
        }
    .end annotation
.end field

.field public mBanner:Landroid/graphics/drawable/Drawable;

.field public mBannerId:I

.field public mContext:Landroid/content/Context;

.field public mDescription:Ljava/lang/String;

.field public mModifiable:Z

.field public mNxpNfcController:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

.field public mPackageName:Ljava/lang/String;

.field public mSEName:Ljava/lang/String;

.field public mServiceName:Ljava/lang/String;

.field public mUserId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "SELocation"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "serviceName"    # Ljava/lang/String;
    .param p6, "modifiable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v1, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mDescription:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mSEName:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mPackageName:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mServiceName:Ljava/lang/String;

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mModifiable:Z

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mAidGroupList:Ljava/util/List;

    .line 39
    iput-object v1, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mContext:Landroid/content/Context;

    .line 42
    iput p1, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mUserId:I

    .line 43
    iput-object p2, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mDescription:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mSEName:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mPackageName:Ljava/lang/String;

    .line 46
    iput-object p5, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mServiceName:Ljava/lang/String;

    .line 47
    iput-boolean p6, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mModifiable:Z

    .line 48
    return-void
.end method


# virtual methods
.method public getBanner()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mBanner:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBannerId()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mBannerId:I

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mSEName:Ljava/lang/String;

    return-object v0
.end method

.method protected getModifiable()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mModifiable:Z

    return v0
.end method

.method protected getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public setBanner(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "banner"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mBanner:Landroid/graphics/drawable/Drawable;

    .line 80
    return-void
.end method

.method public setBannerId(I)V
    .locals 0
    .param p1, "bannerid"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mBannerId:I

    .line 89
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mContext:Landroid/content/Context;

    .line 113
    return-void
.end method

.method public setNxpNfcController(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)V
    .locals 0
    .param p1, "nxpNfcController"    # Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mNxpNfcController:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    .line 122
    return-void
.end method
