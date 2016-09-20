.class final Lcom/oneplus/base/OrientationManager$2;
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
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 55
    # invokes: Lcom/oneplus/base/OrientationManager;->startOrientationSensorInternal()V
    invoke-static {}, Lcom/oneplus/base/OrientationManager;->access$100()V

    .line 56
    return-void
.end method
