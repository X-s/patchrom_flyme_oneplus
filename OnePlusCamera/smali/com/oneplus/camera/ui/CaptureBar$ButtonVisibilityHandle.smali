.class Lcom/oneplus/camera/ui/CaptureBar$ButtonVisibilityHandle;
.super Lcom/oneplus/base/Handle;
.source "CaptureBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/CaptureBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonVisibilityHandle"
.end annotation


# instance fields
.field public final handleList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/camera/ui/CaptureBar$ButtonVisibilityHandle;",
            ">;"
        }
    .end annotation
.end field

.field public final isVisible:Z

.field final synthetic this$0:Lcom/oneplus/camera/ui/CaptureBar;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/ui/CaptureBar;Ljava/util/LinkedList;Z)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/CaptureBar;
    .param p3, "isVisible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/camera/ui/CaptureBar$ButtonVisibilityHandle;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 573
    .local p2, "handleList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/oneplus/camera/ui/CaptureBar$ButtonVisibilityHandle;>;"
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar$ButtonVisibilityHandle;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    .line 575
    const-string/jumbo v0, "ButtonVisibility"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 576
    iput-object p2, p0, Lcom/oneplus/camera/ui/CaptureBar$ButtonVisibilityHandle;->handleList:Ljava/util/LinkedList;

    .line 577
    iput-boolean p3, p0, Lcom/oneplus/camera/ui/CaptureBar$ButtonVisibilityHandle;->isVisible:Z

    .line 573
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 583
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$ButtonVisibilityHandle;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0, p0, p1}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap30(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/ui/CaptureBar$ButtonVisibilityHandle;I)V

    .line 581
    return-void
.end method
