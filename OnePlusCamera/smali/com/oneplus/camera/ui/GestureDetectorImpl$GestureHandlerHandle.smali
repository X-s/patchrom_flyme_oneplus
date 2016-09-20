.class Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;
.super Lcom/oneplus/base/Handle;
.source "GestureDetectorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/GestureDetectorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureHandlerHandle"
.end annotation


# instance fields
.field public consumeGesture:Z

.field public final flags:I

.field public final handler:Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;

.field final synthetic this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/ui/GestureDetectorImpl;Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;I)V
    .locals 1
    .param p2, "handler"    # Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;
    .param p3, "flags"    # I

    .prologue
    .line 198
    iput-object p1, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    .line 199
    const-string v0, "Gesture Handler Handle"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 200
    iput p3, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;->flags:I

    .line 201
    iput-object p2, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;->handler:Lcom/oneplus/camera/ui/GestureDetector$GestureHandler;

    .line 202
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 207
    iget-object v0, p0, Lcom/oneplus/camera/ui/GestureDetectorImpl$GestureHandlerHandle;->this$0:Lcom/oneplus/camera/ui/GestureDetectorImpl;

    # getter for: Lcom/oneplus/camera/ui/GestureDetectorImpl;->m_GestureHandles:Ljava/util/List;
    invoke-static {v0}, Lcom/oneplus/camera/ui/GestureDetectorImpl;->access$300(Lcom/oneplus/camera/ui/GestureDetectorImpl;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 208
    return-void
.end method
