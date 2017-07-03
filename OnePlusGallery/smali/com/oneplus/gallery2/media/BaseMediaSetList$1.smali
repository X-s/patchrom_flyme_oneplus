.class Lcom/oneplus/gallery2/media/BaseMediaSetList$1;
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


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/BaseMediaSetList;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/BaseMediaSetList;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList$1;->this$0:Lcom/oneplus/gallery2/media/BaseMediaSetList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 1
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .param p2, "key"    # Lcom/oneplus/base/PropertyKey;
    .param p3, "e"    # Lcom/oneplus/base/PropertyChangeEventArgs;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSetList$1;->this$0:Lcom/oneplus/gallery2/media/BaseMediaSetList;

    check-cast p1, Lcom/oneplus/gallery2/media/MediaSet;

    .end local p1    # "source":Lcom/oneplus/base/PropertySource;
    # invokes: Lcom/oneplus/gallery2/media/BaseMediaSetList;->onMediaSetPropertyChanged(Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/base/PropertyKey;)V
    invoke-static {v0, p1, p2}, Lcom/oneplus/gallery2/media/BaseMediaSetList;->access$000(Lcom/oneplus/gallery2/media/BaseMediaSetList;Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/base/PropertyKey;)V

    .line 35
    return-void
.end method
