.class Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1$1;
.super Ljava/lang/Object;
.source "TribunePostItemLoadAndUseClkHandler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 48
    iput-object p1, p0, Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1$1;->this$1:Lcom/oppo/tribune/square/TribunePostItemLoadAndUseClkHandler$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 54
    sget-boolean v0, Lcom/oneplus/tuner/utillty/TunerConstant;->isRemind:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/oneplus/tuner/utillty/TunerConstant;->isRemind:Z

    .line 55
    return-void

    .line 54
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
