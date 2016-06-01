.class final Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;
.super Lcom/oneplus/base/Handle;
.source "OnScreenHintImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/OnScreenHintImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HintHandle"
.end annotation


# instance fields
.field public final flags:I

.field public text:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/oneplus/camera/ui/OnScreenHintImpl;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/ui/OnScreenHintImpl;Ljava/lang/CharSequence;I)V
    .locals 1
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "flags"    # I

    .prologue
    .line 63
    iput-object p1, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;->this$0:Lcom/oneplus/camera/ui/OnScreenHintImpl;

    .line 64
    const-string v0, "Hint"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 65
    iput-object p2, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;->text:Ljava/lang/CharSequence;

    .line 66
    iput p3, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;->flags:I

    .line 67
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;->this$0:Lcom/oneplus/camera/ui/OnScreenHintImpl;

    # invokes: Lcom/oneplus/camera/ui/OnScreenHintImpl;->hideHint(Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;)V
    invoke-static {v0, p0}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->access$500(Lcom/oneplus/camera/ui/OnScreenHintImpl;Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;)V

    .line 73
    return-void
.end method
