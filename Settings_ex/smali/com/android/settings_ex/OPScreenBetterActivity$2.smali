.class Lcom/android/settings_ex/OPScreenBetterActivity$2;
.super Ljava/lang/Object;
.source "OPScreenBetterActivity.java"

# interfaces
.implements Lcom/qti/snapdragon/sdk/display/ColorManager$ColorManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/OPScreenBetterActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/OPScreenBetterActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/OPScreenBetterActivity;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/settings_ex/OPScreenBetterActivity$2;->this$0:Lcom/android/settings_ex/OPScreenBetterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/settings_ex/OPScreenBetterActivity$2;->this$0:Lcom/android/settings_ex/OPScreenBetterActivity;

    # invokes: Lcom/android/settings_ex/OPScreenBetterActivity;->getColorManagerInstance()V
    invoke-static {v0}, Lcom/android/settings_ex/OPScreenBetterActivity;->access$000(Lcom/android/settings_ex/OPScreenBetterActivity;)V

    .line 154
    return-void
.end method
