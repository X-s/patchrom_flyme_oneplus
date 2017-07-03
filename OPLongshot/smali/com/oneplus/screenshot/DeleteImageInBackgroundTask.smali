.class Lcom/oneplus/screenshot/DeleteImageInBackgroundTask;
.super Landroid/os/AsyncTask;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Longshot.DeleteImageInBackgroundTask"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 417
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 418
    iput-object p1, p0, Lcom/oneplus/screenshot/DeleteImageInBackgroundTask;->mContext:Landroid/content/Context;

    .line 419
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 412
    check-cast p1, [Landroid/net/Uri;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/DeleteImageInBackgroundTask;->doInBackground([Landroid/net/Uri;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/net/Uri;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 423
    array-length v2, p1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 428
    :goto_0
    return-object v4

    .line 425
    :cond_0
    const/4 v2, 0x0

    aget-object v1, p1, v2

    .line 426
    .local v1, "screenshotUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/oneplus/screenshot/DeleteImageInBackgroundTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 427
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, v1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method
