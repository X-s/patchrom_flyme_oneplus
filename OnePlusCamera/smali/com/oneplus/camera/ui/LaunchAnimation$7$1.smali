.class Lcom/oneplus/camera/ui/LaunchAnimation$7$1;
.super Ljava/lang/Object;
.source "LaunchAnimation.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/LaunchAnimation$7;->onComponentFound(Lcom/oneplus/camera/ui/Viewfinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/PropertyChangedCallback",
        "<",
        "Landroid/graphics/RectF;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/camera/ui/LaunchAnimation$7;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/LaunchAnimation$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/camera/ui/LaunchAnimation$7;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/oneplus/camera/ui/LaunchAnimation$7$1;->this$1:Lcom/oneplus/camera/ui/LaunchAnimation$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 2
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/graphics/RectF;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Landroid/graphics/RectF;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Landroid/graphics/RectF;>;"
    iget-object v0, p0, Lcom/oneplus/camera/ui/LaunchAnimation$7$1;->this$1:Lcom/oneplus/camera/ui/LaunchAnimation$7;

    iget-object v1, v0, Lcom/oneplus/camera/ui/LaunchAnimation$7;->this$0:Lcom/oneplus/camera/ui/LaunchAnimation;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    invoke-static {v1, v0}, Lcom/oneplus/camera/ui/LaunchAnimation;->-wrap2(Lcom/oneplus/camera/ui/LaunchAnimation;Landroid/graphics/RectF;)V

    .line 291
    return-void
.end method
