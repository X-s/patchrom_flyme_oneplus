.class Lcom/oneplus/gallery2/media/MediaUtils$1$1;
.super Ljava/lang/Object;
.source "MediaUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/MediaUtils$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery2/media/MediaUtils$1;

.field private final synthetic val$callback:Lcom/oneplus/gallery2/media/IntentCallback;

.field private final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/MediaUtils$1;Lcom/oneplus/gallery2/media/IntentCallback;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaUtils$1$1;->this$1:Lcom/oneplus/gallery2/media/MediaUtils$1;

    iput-object p2, p0, Lcom/oneplus/gallery2/media/MediaUtils$1$1;->val$callback:Lcom/oneplus/gallery2/media/IntentCallback;

    iput-object p3, p0, Lcom/oneplus/gallery2/media/MediaUtils$1$1;->val$intent:Landroid/content/Intent;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaUtils$1$1;->val$callback:Lcom/oneplus/gallery2/media/IntentCallback;

    if-nez v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaUtils$1$1;->val$callback:Lcom/oneplus/gallery2/media/IntentCallback;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/MediaUtils$1$1;->val$intent:Landroid/content/Intent;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery2/media/IntentCallback;->onIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method
