.class final Lcom/oneplus/base/OrientationManager$3;
.super Ljava/lang/Object;
.source "OrientationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/base/OrientationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 63
    # invokes: Lcom/oneplus/base/OrientationManager;->stopOrientationSensorInternal()V
    invoke-static {}, Lcom/oneplus/base/OrientationManager;->access$200()V

    .line 64
    return-void
.end method
