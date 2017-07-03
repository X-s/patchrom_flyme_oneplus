.class Lcom/oneplus/gallery2/editor/BaseMediaEditor$1;
.super Ljava/lang/Object;
.source "BaseMediaEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/editor/BaseMediaEditor;->changeMediaSavingState(Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/editor/BaseMediaEditor;

.field final synthetic val$prevState:Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;

.field final synthetic val$state:Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/editor/BaseMediaEditor;Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/oneplus/gallery2/editor/BaseMediaEditor$1;->this$0:Lcom/oneplus/gallery2/editor/BaseMediaEditor;

    iput-object p2, p0, Lcom/oneplus/gallery2/editor/BaseMediaEditor$1;->val$prevState:Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;

    iput-object p3, p0, Lcom/oneplus/gallery2/editor/BaseMediaEditor$1;->val$state:Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 79
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/BaseMediaEditor$1;->this$0:Lcom/oneplus/gallery2/editor/BaseMediaEditor;

    sget-object v1, Lcom/oneplus/gallery2/editor/MediaEditor;->PROP_MEDIA_SAVING_STATE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/editor/BaseMediaEditor$1;->val$prevState:Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;

    iget-object v3, p0, Lcom/oneplus/gallery2/editor/BaseMediaEditor$1;->val$state:Lcom/oneplus/gallery2/editor/MediaEditor$MediaSavingState;

    # invokes: Lcom/oneplus/gallery2/editor/BaseMediaEditor;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z
    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/gallery2/editor/BaseMediaEditor;->access$000(Lcom/oneplus/gallery2/editor/BaseMediaEditor;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    return-void
.end method
