.class Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask$1;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask$1;->this$1:Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask$1;->this$1:Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;

    iget-object v0, v0, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;->this$0:Lcom/oneplus/gallery/editor/PhotoEditor;

    iget-object v1, p0, Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask$1;->this$1:Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;

    # invokes: Lcom/oneplus/gallery/editor/PhotoEditor;->onMediaProcessed(Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;)V
    invoke-static {v0, v1}, Lcom/oneplus/gallery/editor/PhotoEditor;->access$400(Lcom/oneplus/gallery/editor/PhotoEditor;Lcom/oneplus/gallery/editor/PhotoEditor$FinalProcessingTask;)V

    .line 299
    return-void
.end method
