.class Lcom/oppo/tribune/ui/LoadingView$2;
.super Ljava/lang/Object;
.source "LoadingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/tribune/ui/LoadingView;->stopAnimation(Landroid/view/View;Landroid/graphics/drawable/AnimationDrawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/tribune/ui/LoadingView;

.field final synthetic val$animation:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method constructor <init>(Lcom/oppo/tribune/ui/LoadingView;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/oppo/tribune/ui/LoadingView$2;->this$0:Lcom/oppo/tribune/ui/LoadingView;

    iput-object p2, p0, Lcom/oppo/tribune/ui/LoadingView$2;->val$animation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/oppo/tribune/ui/LoadingView$2;->val$animation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/oppo/tribune/ui/LoadingView$2;->val$animation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 170
    :cond_0
    return-void
.end method
