.class Lcom/android/server/AppOpsService$Shell;
.super Landroid/os/ShellCommand;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Shell"
.end annotation


# instance fields
.field final mInterface:Lcom/android/internal/app/IAppOpsService;

.field final mInternal:Lcom/android/server/AppOpsService;

.field mode:I

.field modeStr:Ljava/lang/String;

.field op:I

.field opStr:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field packageUid:I

.field userId:I


# direct methods
.method constructor <init>(Lcom/android/internal/app/IAppOpsService;Lcom/android/server/AppOpsService;)V
    .locals 1
    .param p1, "iface"    # Lcom/android/internal/app/IAppOpsService;
    .param p2, "internal"    # Lcom/android/server/AppOpsService;

    .prologue
    .line 1708
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 1700
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    .line 1709
    iput-object p1, p0, Lcom/android/server/AppOpsService$Shell;->mInterface:Lcom/android/internal/app/IAppOpsService;

    .line 1710
    iput-object p2, p0, Lcom/android/server/AppOpsService$Shell;->mInternal:Lcom/android/server/AppOpsService;

    .line 1708
    return-void
.end method

.method private strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I
    .locals 4
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "err"    # Ljava/io/PrintWriter;

    .prologue
    .line 1726
    :try_start_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1727
    :catch_0
    move-exception v0

    .line 1730
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    return v2

    .line 1731
    :catch_1
    move-exception v1

    .line 1734
    .local v1, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    invoke-static {p1}, Landroid/app/AppOpsManager;->strDebugOpToOp(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    return v2

    .line 1735
    :catch_2
    move-exception v0

    .line 1736
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1737
    const/4 v2, -0x1

    return v2
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 1715
    invoke-static {p0, p1}, Lcom/android/server/AppOpsService;->onShellCommand(Lcom/android/server/AppOpsService$Shell;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onHelp()V
    .locals 1

    .prologue
    .line 1720
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1721
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-static {v0}, Lcom/android/server/AppOpsService;->dumpCommandHelp(Ljava/io/PrintWriter;)V

    .line 1719
    return-void
.end method

.method parseUserOpMode(ILjava/io/PrintWriter;)I
    .locals 5
    .param p1, "defMode"    # I
    .param p2, "err"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1761
    const/4 v1, -0x2

    iput v1, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    .line 1762
    iput-object v2, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 1763
    iput-object v2, p0, Lcom/android/server/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    .line 1764
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .local v0, "argument":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 1765
    const-string/jumbo v1, "--user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1766
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    goto :goto_0

    .line 1768
    :cond_1
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 1769
    iput-object v0, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    goto :goto_0

    .line 1770
    :cond_2
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1771
    iput-object v0, p0, Lcom/android/server/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    .line 1776
    :cond_3
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 1777
    const-string/jumbo v1, "Error: Operation not specified."

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1778
    return v3

    .line 1780
    :cond_4
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    invoke-direct {p0, v1, p2}, Lcom/android/server/AppOpsService$Shell;->strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v1

    iput v1, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    .line 1781
    iget v1, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    if-gez v1, :cond_5

    .line 1782
    return v3

    .line 1784
    :cond_5
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 1785
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->modeStr:Ljava/lang/String;

    invoke-virtual {p0, v1, p2}, Lcom/android/server/AppOpsService$Shell;->strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v1

    iput v1, p0, Lcom/android/server/AppOpsService$Shell;->mode:I

    if-gez v1, :cond_7

    .line 1786
    return v3

    .line 1789
    :cond_6
    iput p1, p0, Lcom/android/server/AppOpsService$Shell;->mode:I

    .line 1791
    :cond_7
    return v4
.end method

.method parseUserPackageOp(ZLjava/io/PrintWriter;)I
    .locals 7
    .param p1, "reqOp"    # Z
    .param p2, "err"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x2

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 1795
    iput v2, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    .line 1796
    iput-object v1, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 1797
    iput-object v1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 1798
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .local v0, "argument":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 1799
    const-string/jumbo v1, "--user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1800
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$Shell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    goto :goto_0

    .line 1802
    :cond_1
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 1803
    iput-object v0, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    goto :goto_0

    .line 1804
    :cond_2
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1805
    iput-object v0, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    .line 1810
    :cond_3
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 1811
    const-string/jumbo v1, "Error: Package name not specified."

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1812
    return v5

    .line 1813
    :cond_4
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-nez v1, :cond_5

    if-eqz p1, :cond_5

    .line 1814
    const-string/jumbo v1, "Error: Operation not specified."

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1815
    return v5

    .line 1817
    :cond_5
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 1818
    iget-object v1, p0, Lcom/android/server/AppOpsService$Shell;->opStr:Ljava/lang/String;

    invoke-direct {p0, v1, p2}, Lcom/android/server/AppOpsService$Shell;->strOpToOp(Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result v1

    iput v1, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    .line 1819
    iget v1, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    if-gez v1, :cond_7

    .line 1820
    return v5

    .line 1823
    :cond_6
    iput v5, p0, Lcom/android/server/AppOpsService$Shell;->op:I

    .line 1825
    :cond_7
    iget v1, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    if-ne v1, v2, :cond_8

    .line 1826
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    iput v1, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    .line 1828
    :cond_8
    const-string/jumbo v1, "root"

    iget-object v2, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1829
    iput v6, p0, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    .line 1834
    :goto_1
    iget v1, p0, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    if-gez v1, :cond_a

    .line 1835
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error: No UID for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1836
    return v5

    .line 1831
    :cond_9
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/AppOpsService$Shell;->packageName:Ljava/lang/String;

    .line 1832
    iget v3, p0, Lcom/android/server/AppOpsService$Shell;->userId:I

    const/16 v4, 0x2000

    .line 1831
    invoke-interface {v1, v2, v4, v3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/AppOpsService$Shell;->packageUid:I

    goto :goto_1

    .line 1838
    :cond_a
    return v6
.end method

.method strModeToMode(Ljava/lang/String;Ljava/io/PrintWriter;)I
    .locals 3
    .param p1, "modeStr"    # Ljava/lang/String;
    .param p2, "err"    # Ljava/io/PrintWriter;

    .prologue
    .line 1742
    const-string/jumbo v1, "allow"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1744
    const/4 v1, 0x0

    return v1

    .line 1742
    :cond_0
    const-string/jumbo v1, "deny"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1746
    const/4 v1, 0x2

    return v1

    .line 1742
    :cond_1
    const-string/jumbo v1, "ignore"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1748
    const/4 v1, 0x1

    return v1

    .line 1742
    :cond_2
    const-string/jumbo v1, "default"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1750
    const/4 v1, 0x3

    return v1

    .line 1753
    :cond_3
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1754
    :catch_0
    move-exception v0

    .line 1756
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error: Mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not valid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1757
    const/4 v1, -0x1

    return v1
.end method
