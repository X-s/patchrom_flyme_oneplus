.class Lcom/android/settings_ex/notification/ImportanceSeekBarPreference$2;
.super Ljava/lang/Object;
.source "ImportanceSeekBarPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;

.field final synthetic val$autoButton:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;
    .param p2, "val$autoButton"    # Landroid/widget/ImageView;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference$2;->this$0:Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;

    iput-object p2, p0, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference$2;->val$autoButton:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference$2;->this$0:Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;

    iget-object v1, p0, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference$2;->val$autoButton:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;->-wrap0(Lcom/android/settings_ex/notification/ImportanceSeekBarPreference;Landroid/widget/ImageView;)V

    .line 113
    return-void
.end method
