.class public Landroid/content/res/OpClassFactory;
.super Ljava/lang/Object;
.source "OpClassFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OpClassFactory"


# instance fields
.field private final DEBUG:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/OpClassFactory;->DEBUG:Z

    .line 34
    return-void
.end method

.method public static newResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 37
    new-instance v0, Landroid/content/res/Resources;

    invoke-direct {v0}, Landroid/content/res/Resources;-><init>()V

    return-object v0
.end method

.method public static newResources(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "assetmanager"    # Landroid/content/res/AssetManager;
    .param p1, "displaymetrics"    # Landroid/util/DisplayMetrics;
    .param p2, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    .line 42
    new-instance v0, Landroid/content/res/Resources;

    invoke-direct {v0, p0, p1, p2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    return-object v0
.end method

.method public static newResources(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;)Landroid/content/res/Resources;
    .locals 6
    .param p0, "assetmanager"    # Landroid/content/res/AssetManager;
    .param p1, "displaymetrics"    # Landroid/util/DisplayMetrics;
    .param p2, "configuration"    # Landroid/content/res/Configuration;
    .param p3, "compatibilityinfo"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "token"    # Landroid/os/IBinder;

    .prologue
    .line 47
    new-instance v0, Landroid/content/res/Resources;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;)V

    return-object v0
.end method
