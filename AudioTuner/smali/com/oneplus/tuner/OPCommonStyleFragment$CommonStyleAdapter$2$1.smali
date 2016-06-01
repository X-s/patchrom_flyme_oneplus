.class Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter$2$1;
.super Ljava/lang/Object;
.source "OPCommonStyleFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter$2;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter$2;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter$2$1;->this$2:Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter$2$1;->this$2:Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter$2;

    iget-object v0, v0, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter$2;->this$1:Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;

    iget-object v0, v0, Lcom/oneplus/tuner/OPCommonStyleFragment$CommonStyleAdapter;->this$0:Lcom/oneplus/tuner/OPCommonStyleFragment;

    invoke-virtual {v0}, Lcom/oneplus/tuner/OPCommonStyleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c06d0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/oppo/tribune/ui/CustomToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 233
    return-void
.end method
