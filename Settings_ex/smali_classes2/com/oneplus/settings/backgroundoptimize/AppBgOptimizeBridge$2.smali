.class final Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge$2;
.super Ljava/lang/Object;
.source "AppBgOptimizeBridge.java"

# interfaces
.implements Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;)Z
    .locals 4
    .param p1, "info"    # Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 82
    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-nez v3, :cond_1

    .line 83
    :cond_0
    return v2

    .line 86
    :cond_1
    iget-object v0, p1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;

    .line 87
    .local v0, "acm":Lcom/oneplus/settings/backgroundoptimize/AppControlMode;
    iget v3, v0, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;->value:I

    if-ne v1, v3, :cond_2

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method
