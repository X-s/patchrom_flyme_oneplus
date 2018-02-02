.class Lcom/oneplus/camera/ui/LaunchAnimation$3;
.super Ljava/lang/Object;
.source "LaunchAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/LaunchAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/LaunchAnimation;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/LaunchAnimation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/LaunchAnimation;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/oneplus/camera/ui/LaunchAnimation$3;->this$0:Lcom/oneplus/camera/ui/LaunchAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/oneplus/camera/ui/LaunchAnimation$3;->this$0:Lcom/oneplus/camera/ui/LaunchAnimation;

    invoke-static {v0}, Lcom/oneplus/camera/ui/LaunchAnimation;->-wrap6(Lcom/oneplus/camera/ui/LaunchAnimation;)V

    .line 109
    return-void
.end method
