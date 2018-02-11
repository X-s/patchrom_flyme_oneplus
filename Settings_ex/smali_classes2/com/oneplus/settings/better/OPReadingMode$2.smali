.class Lcom/oneplus/settings/better/OPReadingMode$2;
.super Landroid/database/ContentObserver;
.source "OPReadingMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/better/OPReadingMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/better/OPReadingMode;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/better/OPReadingMode;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/better/OPReadingMode;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/oneplus/settings/better/OPReadingMode$2;->this$0:Lcom/oneplus/settings/better/OPReadingMode;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 136
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 142
    iget-object v2, p0, Lcom/oneplus/settings/better/OPReadingMode$2;->this$0:Lcom/oneplus/settings/better/OPReadingMode;

    invoke-static {v2}, Lcom/oneplus/settings/better/OPReadingMode;->-wrap0(Lcom/oneplus/settings/better/OPReadingMode;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "reading_mode_status"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 143
    .local v0, "value":I
    iget-object v2, p0, Lcom/oneplus/settings/better/OPReadingMode$2;->this$0:Lcom/oneplus/settings/better/OPReadingMode;

    invoke-static {v2}, Lcom/oneplus/settings/better/OPReadingMode;->-get5(Lcom/oneplus/settings/better/OPReadingMode;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 144
    iget-object v2, p0, Lcom/oneplus/settings/better/OPReadingMode$2;->this$0:Lcom/oneplus/settings/better/OPReadingMode;

    invoke-static {v2}, Lcom/oneplus/settings/better/OPReadingMode;->-get5(Lcom/oneplus/settings/better/OPReadingMode;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 139
    :cond_1
    return-void
.end method
