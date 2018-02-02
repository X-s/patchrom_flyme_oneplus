.class Lcom/oneplus/camera/ui/TutorialUI$10;
.super Ljava/lang/Object;
.source "TutorialUI.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/TutorialUI;
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
        "Ljava/util/List",
        "<",
        "Lcom/oneplus/camera/Camera$MeteringRect;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/TutorialUI;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/TutorialUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/TutorialUI;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/oneplus/camera/ui/TutorialUI$10;->this$0:Lcom/oneplus/camera/ui/TutorialUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 3
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/Camera$MeteringRect;",
            ">;>;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/Camera$MeteringRect;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/util/List<Lcom/oneplus/camera/Camera$MeteringRect;>;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/util/List<Lcom/oneplus/camera/Camera$MeteringRect;>;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getOldValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 191
    .local v1, "oldList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$MeteringRect;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 192
    .local v0, "newList":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/camera/Camera$MeteringRect;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 188
    :cond_1
    :goto_0
    return-void

    .line 194
    :cond_2
    iget-object v2, p0, Lcom/oneplus/camera/ui/TutorialUI$10;->this$0:Lcom/oneplus/camera/ui/TutorialUI;

    invoke-static {v2, v0}, Lcom/oneplus/camera/ui/TutorialUI;->-wrap1(Lcom/oneplus/camera/ui/TutorialUI;Ljava/util/List;)V

    goto :goto_0
.end method
