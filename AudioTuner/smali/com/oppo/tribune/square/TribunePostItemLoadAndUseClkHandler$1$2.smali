.class Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1$2;
.super Ljava/lang/Object;
.source "TribunePostItemLoadAndUseClkHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1;


# direct methods
.method constructor <init>(Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1$2;->this$1:Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 92
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 93
    return-void
.end method
