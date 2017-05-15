.class Landroid/support/v7/graphics/Palette$Builder$1;
.super Landroid/os/AsyncTask;
.source "Palette.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/graphics/Palette$Builder;->generate(Landroid/support/v7/graphics/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "Landroid/support/v7/graphics/Palette;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/graphics/Palette$Builder;

.field final synthetic val$listener:Landroid/support/v7/graphics/Palette$PaletteAsyncListener;


# direct methods
.method constructor <init>(Landroid/support/v7/graphics/Palette$Builder;Landroid/support/v7/graphics/Palette$PaletteAsyncListener;)V
    .locals 0

    .prologue
    .line 620
    iput-object p1, p0, Landroid/support/v7/graphics/Palette$Builder$1;->this$0:Landroid/support/v7/graphics/Palette$Builder;

    iput-object p2, p0, Landroid/support/v7/graphics/Palette$Builder$1;->val$listener:Landroid/support/v7/graphics/Palette$PaletteAsyncListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/graphics/Bitmap;)Landroid/support/v7/graphics/Palette;
    .locals 1
    .param p1, "params"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 623
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder$1;->this$0:Landroid/support/v7/graphics/Palette$Builder;

    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Builder;->generate()Landroid/support/v7/graphics/Palette;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 620
    check-cast p1, [Landroid/graphics/Bitmap;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/support/v7/graphics/Palette$Builder$1;->doInBackground([Landroid/graphics/Bitmap;)Landroid/support/v7/graphics/Palette;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/support/v7/graphics/Palette;)V
    .locals 1
    .param p1, "colorExtractor"    # Landroid/support/v7/graphics/Palette;

    .prologue
    .line 628
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder$1;->val$listener:Landroid/support/v7/graphics/Palette$PaletteAsyncListener;

    invoke-interface {v0, p1}, Landroid/support/v7/graphics/Palette$PaletteAsyncListener;->onGenerated(Landroid/support/v7/graphics/Palette;)V

    .line 629
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 620
    check-cast p1, Landroid/support/v7/graphics/Palette;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/support/v7/graphics/Palette$Builder$1;->onPostExecute(Landroid/support/v7/graphics/Palette;)V

    return-void
.end method
