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
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/ToastManagerImpl;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;->this$0:Lcom/oneplus/camera/ui/ToastManagerImpl;

    .line 34
    const-string/jumbo v0, "Toast"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 35
    iput-object p2, p0, Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;->message:Ljava/lang/CharSequence;

    .line 32
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;->this$0:Lcom/oneplus/camera/ui/ToastManagerImpl;

    invoke-static {v0, p0}, Lcom/oneplus/camera/ui/ToastManagerImpl;->-wrap0(Lcom/oneplus/camera/ui/ToastManagerImpl;Lcom/oneplus/camera/ui/ToastManagerImpl$ToastHandle;)V

    .line 39
    return-void
.end method
