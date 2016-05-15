.class public Landroid/content/res/OpResourceHelper;
.super Ljava/lang/Object;
.source "OpResourceHelper.java"


# static fields
.field public static final OPPO_RES_PATH:Ljava/lang/String; = "/system/framework/oneplus-framework-res.apk"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addExtraAssetPaths(Landroid/content/res/AssetManager;)V
    .locals 1
    .param p0, "assetManager"    # Landroid/content/res/AssetManager;

    .prologue
    .line 27
    const-string v0, "/system/framework/oneplus-framework-res.apk"

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 28
    return-void
.end method
