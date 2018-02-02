.class Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$MotionVectorHandle;
.super Lcom/oneplus/base/Handle;
.source "MotionVectorPreviewRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MotionVectorHandle"
.end annotation


# instance fields
.field private startTime:J

.field final synthetic this$0:Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;

.field public vectors:[[Landroid/graphics/PointF;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;[[Landroid/graphics/PointF;)V
    .locals 2
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;
    .param p2, "vectors"    # [[Landroid/graphics/PointF;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$MotionVectorHandle;->this$0:Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;

    .line 108
    const-string/jumbo v0, "Motion Vector Handle"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 109
    iput-object p2, p0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$MotionVectorHandle;->vectors:[[Landroid/graphics/PointF;

    .line 110
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$MotionVectorHandle;->startTime:J

    .line 106
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 114
    return-void
.end method
