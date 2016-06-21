.class Lcom/android/systemui_ex/statusbar/BaseStatusBar$8;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/BaseStatusBar;->inflateGuts(Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

.field final synthetic val$appUidF:I

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/BaseStatusBar;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1057
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$8;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    iput-object p2, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$8;->val$pkg:Ljava/lang/String;

    iput p3, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$8;->val$appUidF:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$8;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$8;->val$pkg:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$8;->val$appUidF:I

    # invokes: Lcom/android/systemui_ex/statusbar/BaseStatusBar;->startAppNotificationSettingsActivity(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->access$1000(Lcom/android/systemui_ex/statusbar/BaseStatusBar;Ljava/lang/String;I)V

    .line 1060
    return-void
.end method
