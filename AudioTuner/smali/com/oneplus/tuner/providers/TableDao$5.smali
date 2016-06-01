.class Lcom/oneplus/tuner/providers/TableDao$5;
.super Ljava/lang/Object;
.source "TableDao.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/providers/TableDao;->delete(Ljava/lang/Object;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/providers/TableDao;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/providers/TableDao;)V
    .locals 0

    .prologue
    .line 265
    .local p0, "this":Lcom/oneplus/tuner/providers/TableDao$5;, "Lcom/oneplus/tuner/providers/TableDao.5;"
    iput-object p1, p0, Lcom/oneplus/tuner/providers/TableDao$5;->this$0:Lcom/oneplus/tuner/providers/TableDao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 268
    .local p0, "this":Lcom/oneplus/tuner/providers/TableDao$5;, "Lcom/oneplus/tuner/providers/TableDao.5;"
    iget-object v0, p0, Lcom/oneplus/tuner/providers/TableDao$5;->this$0:Lcom/oneplus/tuner/providers/TableDao;

    iget-object v0, v0, Lcom/oneplus/tuner/providers/TableDao;->mContext:Landroid/content/Context;

    const v1, 0x7f0c06fe

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 271
    return-void
.end method
