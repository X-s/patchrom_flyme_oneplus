.class Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$2;
.super Ljava/lang/Object;
.source "LocaleDragAndDropAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;

.field final synthetic val$dragCell:Lcom/android/settings_ex/localepicker/LocaleDragCell;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;Lcom/android/settings_ex/localepicker/LocaleDragCell;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;
    .param p2, "val$dragCell"    # Lcom/android/settings_ex/localepicker/LocaleDragCell;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$2;->this$0:Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter;

    iput-object p2, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$2;->val$dragCell:Lcom/android/settings_ex/localepicker/LocaleDragCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 214
    iget-object v1, p0, Lcom/android/settings_ex/localepicker/LocaleDragAndDropAdapter$2;->val$dragCell:Lcom/android/settings_ex/localepicker/LocaleDragCell;

    invoke-virtual {v1}, Lcom/android/settings_ex/localepicker/LocaleDragCell;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 215
    .local v0, "feedItem":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v0, p2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setChecked(Z)V

    .line 212
    return-void
.end method
