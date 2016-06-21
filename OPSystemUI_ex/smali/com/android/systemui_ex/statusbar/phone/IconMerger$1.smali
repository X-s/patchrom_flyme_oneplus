.class Lcom/android/systemui_ex/statusbar/phone/IconMerger$1;
.super Ljava/lang/Object;
.source "IconMerger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/phone/IconMerger;->checkOverflow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/phone/IconMerger;

.field final synthetic val$lp:Landroid/widget/LinearLayout$LayoutParams;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/phone/IconMerger;Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/IconMerger$1;->this$0:Lcom/android/systemui_ex/statusbar/phone/IconMerger;

    iput-object p2, p0, Lcom/android/systemui_ex/statusbar/phone/IconMerger$1;->val$lp:Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/IconMerger$1;->this$0:Lcom/android/systemui_ex/statusbar/phone/IconMerger;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/IconMerger$1;->val$lp:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/IconMerger;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    return-void
.end method
