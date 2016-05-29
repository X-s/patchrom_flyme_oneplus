.class Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection$1;
.super Ljava/lang/Object;
.source "ZenModeDowntimeDaysSelection.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;

.field final synthetic val$day:I


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;I)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection$1;->this$0:Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;

    iput p2, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection$1;->val$day:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection$1;->this$0:Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;

    # getter for: Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->mDays:Landroid/util/SparseBooleanArray;
    invoke-static {v0}, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->access$000(Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection$1;->val$day:I

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection$1;->this$0:Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection$1;->this$0:Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;

    # invokes: Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->getMode()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->access$100(Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/ZenModeDowntimeDaysSelection;->onChanged(Ljava/lang/String;)V

    .line 71
    return-void
.end method
