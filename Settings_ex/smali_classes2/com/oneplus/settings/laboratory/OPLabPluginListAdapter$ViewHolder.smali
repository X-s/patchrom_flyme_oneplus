.class Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "OPLabPluginListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field featureTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;


# direct methods
.method private constructor <init>(Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter$ViewHolder;->this$0:Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter$ViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter$ViewHolder;-><init>(Lcom/oneplus/settings/laboratory/OPLabPluginListAdapter;)V

    return-void
.end method
