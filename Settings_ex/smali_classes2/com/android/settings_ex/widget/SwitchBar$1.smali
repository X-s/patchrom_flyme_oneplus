.class Lcom/android/settings_ex/widget/SwitchBar$1;
.super Ljava/lang/Object;
.source "SwitchBar.java"

# interfaces
.implements Lcom/android/settings_ex/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/widget/SwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/widget/SwitchBar;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/widget/SwitchBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/widget/SwitchBar;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/settings_ex/widget/SwitchBar$1;->this$0:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/settings_ex/widget/SwitchBar$1;->this$0:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, p2}, Lcom/android/settings_ex/widget/SwitchBar;->setTextViewLabel(Z)V

    .line 121
    return-void
.end method
