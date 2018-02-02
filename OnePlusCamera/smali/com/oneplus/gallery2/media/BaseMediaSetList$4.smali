.class Lcom/oneplus/gallery2/media/BaseMediaSetList$4;
.super Ljava/lang/Object;
.source "BaseMediaSetList.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/BaseMediaSetList;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/BaseMediaSetList;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/BaseMediaSetList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList$4;->this$0:Lcom/oneplus/gallery2/media/BaseMediaSetList;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList$4;->this$0:Lcom/oneplus/gallery2/media/BaseMediaSetList;

    check-cast p1, Lcom/oneplus/gallery2/media/MediaSet;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, p1, v0}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->access$4(Lcom/oneplus/gallery2/media/BaseMediaSetList;Lcom/oneplus/gallery2/media/MediaSet;Z)V

    .line 66
    return-void
.end method
