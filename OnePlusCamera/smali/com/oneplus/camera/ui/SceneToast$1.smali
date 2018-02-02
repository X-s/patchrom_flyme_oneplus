.class Lcom/oneplus/camera/ui/SceneToast$1;
.super Ljava/lang/Object;
.source "SceneToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/SceneToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/SceneToast;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/SceneToast;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/SceneToast;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/oneplus/camera/ui/SceneToast$1;->this$0:Lcom/oneplus/camera/ui/SceneToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/oneplus/camera/ui/SceneToast$1;->this$0:Lcom/oneplus/camera/ui/SceneToast;

    invoke-static {v0}, Lcom/oneplus/camera/ui/SceneToast;->-wrap0(Lcom/oneplus/camera/ui/SceneToast;)V

    .line 47
    return-void
.end method
