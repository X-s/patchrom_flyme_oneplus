.class Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection$1;
.super Ljava/lang/Object;
.source "ZenModeScheduleDaysSelection.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection;-><init>(Landroid/content/Context;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection;

.field final synthetic val$day:I


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection;I)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection$1;->this$0:Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection;

    iput p2, p0, Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection$1;->val$day:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection$1;->this$0:Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection;

    # getter for: Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;
    invoke-static {v0}, Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection;->access$000(Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection$1;->val$day:I

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 76
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection$1;->this$0:Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection$1;->this$0:Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection;

    # invokes: Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection;->getDays()[I
    invoke-static {v1}, Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection;->access$100(Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection;->onChanged([I)V

    .line 77
    return-void
.end method
