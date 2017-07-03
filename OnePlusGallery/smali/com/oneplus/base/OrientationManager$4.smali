.class Lcom/oneplus/base/OrientationManager$4;
.super Ljava/lang/Object;
.source "OrientationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/base/OrientationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 71
    # invokes: Lcom/oneplus/base/OrientationManager;->unregisterAccRotationInternal()V
    invoke-static {}, Lcom/oneplus/base/OrientationManager;->access$3()V

    .line 72
    return-void
.end method
