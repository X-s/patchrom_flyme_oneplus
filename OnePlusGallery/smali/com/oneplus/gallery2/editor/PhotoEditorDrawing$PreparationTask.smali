.class final Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PreparationTask;
.super Landroid/os/AsyncTask;
.source "PhotoEditorDrawing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PreparationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public volatile mosaicBitmap:Landroid/graphics/Bitmap;

.field public final previewHeight:I

.field public final previewPixels:[I

.field public final previewWidth:I

.field final synthetic this$0:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;II[I)V
    .locals 0
    .param p2, "previewWidth"    # I
    .param p3, "previewHeight"    # I
    .param p4, "previewPixels"    # [I

    .prologue
    .line 106
    iput-object p1, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PreparationTask;->this$0:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 107
    iput p2, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PreparationTask;->previewWidth:I

    .line 108
    iput p3, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PreparationTask;->previewHeight:I

    .line 109
    iput-object p4, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PreparationTask;->previewPixels:[I

    .line 110
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PreparationTask;->this$0:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;

    # invokes: Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->prepare(Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PreparationTask;)Z
    invoke-static {v0, p0}, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->access$000(Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PreparationTask;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 96
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PreparationTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PreparationTask;->this$0:Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    # invokes: Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->onPrepared(Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PreparationTask;Z)V
    invoke-static {v0, p0, v1}, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;->access$100(Lcom/oneplus/gallery2/editor/PhotoEditorDrawing;Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PreparationTask;Z)V

    .line 124
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 96
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/editor/PhotoEditorDrawing$PreparationTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
