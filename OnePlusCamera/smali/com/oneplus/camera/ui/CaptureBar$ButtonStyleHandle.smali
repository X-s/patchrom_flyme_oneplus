.class Lcom/oneplus/camera/ui/CaptureBar$ButtonStyleHandle;
.super Lcom/oneplus/base/Handle;
.source "CaptureBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/CaptureBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonStyleHandle"
.end annotation


# instance fields
.field public final button:Lcom/oneplus/camera/ui/CaptureButtons$Button;

.field public final flags:I

.field public final style:Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;

.field final synthetic this$0:Lcom/oneplus/camera/ui/CaptureBar;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/ui/CaptureButtons$Button;Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/CaptureBar;
    .param p2, "button"    # Lcom/oneplus/camera/ui/CaptureButtons$Button;
    .param p3, "style"    # Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;
    .param p4, "flags"    # I

    .prologue
    .line 186
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureBar$ButtonStyleHandle;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    .line 188
    const-string/jumbo v0, "CaptureButtonStyle"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 189
    iput-object p2, p0, Lcom/oneplus/camera/ui/CaptureBar$ButtonStyleHandle;->button:Lcom/oneplus/camera/ui/CaptureButtons$Button;

    .line 190
    iput-object p3, p0, Lcom/oneplus/camera/ui/CaptureBar$ButtonStyleHandle;->style:Lcom/oneplus/camera/ui/CaptureButtons$ButtonStyle;

    .line 191
    iput p4, p0, Lcom/oneplus/camera/ui/CaptureBar$ButtonStyleHandle;->flags:I

    .line 186
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 197
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureBar$ButtonStyleHandle;->this$0:Lcom/oneplus/camera/ui/CaptureBar;

    invoke-static {v0, p0, p1}, Lcom/oneplus/camera/ui/CaptureBar;->-wrap17(Lcom/oneplus/camera/ui/CaptureBar;Lcom/oneplus/camera/ui/CaptureBar$ButtonStyleHandle;I)V

    .line 195
    return-void
.end method
