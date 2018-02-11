.class Lcom/android/settings_ex/RadioInfo$18;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/RadioInfo;->updateAllCellInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/RadioInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/RadioInfo;

    .prologue
    .line 952
    iput-object p1, p0, Lcom/android/settings_ex/RadioInfo$18;->this$0:Lcom/android/settings_ex/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 954
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo$18;->this$0:Lcom/android/settings_ex/RadioInfo;

    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo$18;->this$0:Lcom/android/settings_ex/RadioInfo;

    invoke-static {v1}, Lcom/android/settings_ex/RadioInfo;->-get7(Lcom/android/settings_ex/RadioInfo;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ex/RadioInfo;->-wrap15(Lcom/android/settings_ex/RadioInfo;Ljava/util/List;)V

    .line 955
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo$18;->this$0:Lcom/android/settings_ex/RadioInfo;

    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo$18;->this$0:Lcom/android/settings_ex/RadioInfo;

    invoke-static {v1}, Lcom/android/settings_ex/RadioInfo;->-get2(Lcom/android/settings_ex/RadioInfo;)Landroid/telephony/CellLocation;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ex/RadioInfo;->-wrap13(Lcom/android/settings_ex/RadioInfo;Landroid/telephony/CellLocation;)V

    .line 956
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo$18;->this$0:Lcom/android/settings_ex/RadioInfo;

    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo$18;->this$0:Lcom/android/settings_ex/RadioInfo;

    invoke-static {v1}, Lcom/android/settings_ex/RadioInfo;->-get1(Lcom/android/settings_ex/RadioInfo;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ex/RadioInfo;->-wrap7(Lcom/android/settings_ex/RadioInfo;Ljava/util/List;)V

    .line 953
    return-void
.end method
