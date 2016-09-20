.class final Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;
.super Lcom/oneplus/base/Handle;
.source "ToastManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/ToastManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ToastHandle"
.end annotation


# instance fields
.field public final message:Ljava/lang/CharSequence;

.field public showTime:J

.field final synthetic this$0:Lcom/oneplus/camera/ui/ToastManagerImpl;

.field public toast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/ui/ToastManagerImpl;Ljava/lang/CharSequence;)V
    .locals 1
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;->this$0:Lcom/oneplus/camera/ui/ToastManagerImpl;

    .line 41
    const-string v0, "Toast"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 42
    iput-object p2, p0, Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;->message:Ljava/lang/CharSequence;

    .line 43
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;->this$0:Lcom/oneplus/camera/ui/ToastManagerImpl;

    # invokes: Lcom/oneplus/camera/ui/ToastManagerImpl;->hideToast(Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;)V
    invoke-static {v0, p0}, Lcom/oneplus/camera/ui/ToastManagerImpl;->access$000(Lcom/oneplus/camera/ui/ToastManagerImpl;Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;)V

    .line 49
    return-void
.end method
