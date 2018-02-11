.class Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;
.super Ljava/lang/Object;
.source "OPGestureAppAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/gestures/OPGestureAppAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemViewHolder"
.end annotation


# instance fields
.field appIconIv:Landroid/widget/ImageView;

.field appNameTv:Landroid/widget/TextView;

.field bottomLine:Landroid/view/View;

.field groupDivider:Landroid/view/View;

.field parent:Landroid/widget/RelativeLayout;

.field radioButton:Landroid/widget/RadioButton;

.field summaryTv:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/oneplus/settings/gestures/OPGestureAppAdapter;

.field titleTv:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/gestures/OPGestureAppAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/gestures/OPGestureAppAdapter;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPGestureAppAdapter$ItemViewHolder;->this$0:Lcom/oneplus/settings/gestures/OPGestureAppAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
