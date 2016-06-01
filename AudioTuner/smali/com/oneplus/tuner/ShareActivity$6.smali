.class Lcom/oneplus/tuner/ShareActivity$6;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/ShareActivity;->warnToBack()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/ShareActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/ShareActivity;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lcom/oneplus/tuner/ShareActivity$6;->this$0:Lcom/oneplus/tuner/ShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 466
    iget-object v0, p0, Lcom/oneplus/tuner/ShareActivity$6;->this$0:Lcom/oneplus/tuner/ShareActivity;

    invoke-virtual {v0}, Lcom/oneplus/tuner/ShareActivity;->finish()V

    .line 467
    return-void
.end method
