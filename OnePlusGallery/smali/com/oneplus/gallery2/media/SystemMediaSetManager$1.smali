.class Lcom/oneplus/gallery2/media/SystemMediaSetManager$1;
.super Ljava/lang/Object;
.source "SystemMediaSetManager.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/SystemMediaSetManager;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/SystemMediaSetManager;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/SystemMediaSetManager;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager$1;->this$0:Lcom/oneplus/gallery2/media/SystemMediaSetManager;

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
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Integer;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/oneplus/gallery2/media/SystemMediaSetManager$1;->this$0:Lcom/oneplus/gallery2/media/SystemMediaSetManager;

    check-cast p1, Lcom/oneplus/gallery2/media/MediaSet;

    .end local p1    # "source":Lcom/oneplus/base/PropertySource;
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getOldValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    # invokes: Lcom/oneplus/gallery2/media/SystemMediaSetManager;->onMediaCountChanged(Lcom/oneplus/gallery2/media/MediaSet;Ljava/lang/Integer;Ljava/lang/Integer;)V
    invoke-static {v2, p1, v0, v1}, Lcom/oneplus/gallery2/media/SystemMediaSetManager;->access$000(Lcom/oneplus/gallery2/media/SystemMediaSetManager;Lcom/oneplus/gallery2/media/MediaSet;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 41
    return-void
.end method
