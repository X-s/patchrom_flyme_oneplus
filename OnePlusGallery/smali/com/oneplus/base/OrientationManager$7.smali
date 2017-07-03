.class Lcom/oneplus/base/OrientationManager$7;
.super Landroid/database/ContentObserver;
.source "OrientationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/base/OrientationManager;->startOrientationSensor(Landroid/content/Context;)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 364
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .prologue
    .line 369
    # invokes: Lcom/oneplus/base/OrientationManager;->onAccRotationSettingsChangedInternal()V
    invoke-static {}, Lcom/oneplus/base/OrientationManager;->access$7()V

    .line 370
    return-void
.end method
