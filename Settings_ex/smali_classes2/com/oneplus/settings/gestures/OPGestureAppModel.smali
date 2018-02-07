.class public Lcom/oneplus/settings/gestures/OPGestureAppModel;
.super Ljava/lang/Object;
.source "OPGestureAppModel.java"


# instance fields
.field private ShortCutId:Ljava/lang/String;

.field private appIcon:Landroid/graphics/drawable/Drawable;

.field private pkgName:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private uid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "shortCutId"    # Ljava/lang/String;
    .param p4, "uid"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureAppModel;->pkgName:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/oneplus/settings/gestures/OPGestureAppModel;->title:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/oneplus/settings/gestures/OPGestureAppModel;->ShortCutId:Ljava/lang/String;

    .line 19
    iput p4, p0, Lcom/oneplus/settings/gestures/OPGestureAppModel;->uid:I

    .line 14
    return-void
.end method


# virtual methods
.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppModel;->appIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppModel;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getShortCutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppModel;->ShortCutId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/oneplus/settings/gestures/OPGestureAppModel;->uid:I

    return v0
.end method

.method public setAppIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "appIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureAppModel;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 26
    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureAppModel;->pkgName:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setShortCutId(Ljava/lang/String;)V
    .locals 0
    .param p1, "shortCutId"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureAppModel;->ShortCutId:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureAppModel;->title:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setUid(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/oneplus/settings/gestures/OPGestureAppModel;->uid:I

    .line 50
    return-void
.end method
