.class Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask$2;
.super Ljava/lang/Object;
.source "MediaSetPickerFragment.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;
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
.field final synthetic this$1:Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask$2;->this$1:Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;

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
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 357
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Integer;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask$2;->this$1:Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    # setter for: Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaCount:Ljava/lang/Integer;
    invoke-static {v1, v0}, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->access$1202(Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 358
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask$2;->this$1:Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;

    # getter for: Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->m_MediaList:Lcom/oneplus/gallery2/media/MediaList;
    invoke-static {v0}, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->access$1300(Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;)Lcom/oneplus/gallery2/media/MediaList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask$2;->this$1:Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;

    # invokes: Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->onMediaListChanged()Z
    invoke-static {v0}, Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;->access$1100(Lcom/oneplus/gallery2/MediaSetPickerFragment$CoverImageCreationTask;)Z

    .line 360
    :cond_0
    return-void
.end method
