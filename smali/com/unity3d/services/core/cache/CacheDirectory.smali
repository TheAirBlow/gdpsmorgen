.class public Lcom/unity3d/services/core/cache/CacheDirectory;
.super Ljava/lang/Object;
.source "CacheDirectory.java"


# static fields
.field private static final TEST_FILE_NAME:Ljava/lang/String; = "UnityAdsTest.txt"


# instance fields
.field private _cacheDirName:Ljava/lang/String;

.field private _cacheDirectory:Ljava/io/File;

.field private _initialized:Z

.field private _type:Lcom/unity3d/services/core/cache/CacheDirectoryType;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "cacheDirName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/services/core/cache/CacheDirectory;->_initialized:Z

    .line 18
    iput-object v1, p0, Lcom/unity3d/services/core/cache/CacheDirectory;->_cacheDirectory:Ljava/io/File;

    .line 19
    iput-object v1, p0, Lcom/unity3d/services/core/cache/CacheDirectory;->_type:Lcom/unity3d/services/core/cache/CacheDirectoryType;

    .line 22
    iput-object p1, p0, Lcom/unity3d/services/core/cache/CacheDirectory;->_cacheDirName:Ljava/lang/String;

    .line 23
    return-void
.end method

.method private createNoMediaFile(Ljava/io/File;)V
    .locals 4
    .param p1, "path"    # Ljava/io/File;

    .prologue
    .line 131
    new-instance v2, Ljava/io/File;

    const-string v3, ".nomedia"

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 134
    .local v2, "noMediaFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v0

    .line 136
    .local v0, "created":Z
    if-eqz v0, :cond_0

    .line 137
    const-string v3, "Successfully created .nomedia file"

    invoke-static {v3}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 144
    .end local v0    # "created":Z
    :goto_0
    return-void

    .line 139
    .restart local v0    # "created":Z
    :cond_0
    const-string v3, "Using existing .nomedia file"

    invoke-static {v3}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    .end local v0    # "created":Z
    :catch_0
    move-exception v1

    .line 142
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Failed to create .nomedia file"

    invoke-static {v3, v1}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public createCacheDirectory(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "baseDir"    # Ljava/io/File;
    .param p2, "newDir"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 72
    if-nez p1, :cond_1

    move-object v0, v1

    .line 83
    :cond_0
    :goto_0
    return-object v0

    .line 76
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 78
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 80
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 83
    goto :goto_0
.end method

.method public getCacheDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    iget-boolean v3, p0, Lcom/unity3d/services/core/cache/CacheDirectory;->_initialized:Z

    if-eqz v3, :cond_0

    .line 27
    iget-object v3, p0, Lcom/unity3d/services/core/cache/CacheDirectory;->_cacheDirectory:Ljava/io/File;

    .line 63
    :goto_0
    return-object v3

    .line 29
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/unity3d/services/core/cache/CacheDirectory;->_initialized:Z

    .line 31
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-le v3, v4, :cond_2

    .line 32
    const-string v3, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 33
    const/4 v1, 0x0

    .line 35
    .local v1, "externalCache":Ljava/io/File;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcom/unity3d/services/core/cache/CacheDirectory;->_cacheDirName:Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lcom/unity3d/services/core/cache/CacheDirectory;->createCacheDirectory(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 41
    :goto_1
    invoke-virtual {p0, v1}, Lcom/unity3d/services/core/cache/CacheDirectory;->testCacheDirectory(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 42
    invoke-direct {p0, v1}, Lcom/unity3d/services/core/cache/CacheDirectory;->createNoMediaFile(Ljava/io/File;)V

    .line 44
    iput-object v1, p0, Lcom/unity3d/services/core/cache/CacheDirectory;->_cacheDirectory:Ljava/io/File;

    .line 45
    sget-object v3, Lcom/unity3d/services/core/cache/CacheDirectoryType;->EXTERNAL:Lcom/unity3d/services/core/cache/CacheDirectoryType;

    iput-object v3, p0, Lcom/unity3d/services/core/cache/CacheDirectory;->_type:Lcom/unity3d/services/core/cache/CacheDirectoryType;

    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unity Ads is using external cache directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 47
    iget-object v3, p0, Lcom/unity3d/services/core/cache/CacheDirectory;->_cacheDirectory:Ljava/io/File;

    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Creating external cache directory failed"

    invoke-static {v3, v0}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 50
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "externalCache":Ljava/io/File;
    :cond_1
    const-string v3, "External media not mounted"

    invoke-static {v3}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 54
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    .line 55
    .local v2, "internalCache":Ljava/io/File;
    invoke-virtual {p0, v2}, Lcom/unity3d/services/core/cache/CacheDirectory;->testCacheDirectory(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 56
    iput-object v2, p0, Lcom/unity3d/services/core/cache/CacheDirectory;->_cacheDirectory:Ljava/io/File;

    .line 57
    sget-object v3, Lcom/unity3d/services/core/cache/CacheDirectoryType;->INTERNAL:Lcom/unity3d/services/core/cache/CacheDirectoryType;

    iput-object v3, p0, Lcom/unity3d/services/core/cache/CacheDirectory;->_type:Lcom/unity3d/services/core/cache/CacheDirectoryType;

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unity Ads is using internal cache directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 59
    iget-object v3, p0, Lcom/unity3d/services/core/cache/CacheDirectory;->_cacheDirectory:Ljava/io/File;

    goto/16 :goto_0

    .line 62
    :cond_3
    const-string v3, "Unity Ads failed to initialize cache directory"

    invoke-static {v3}, Lcom/unity3d/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 63
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public getType()Lcom/unity3d/services/core/cache/CacheDirectoryType;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/unity3d/services/core/cache/CacheDirectory;->_type:Lcom/unity3d/services/core/cache/CacheDirectoryType;

    return-object v0
.end method

.method public testCacheDirectory(Ljava/io/File;)Z
    .locals 11
    .param p1, "directory"    # Ljava/io/File;

    .prologue
    const/4 v8, 0x0

    .line 88
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v8

    .line 93
    :cond_1
    :try_start_0
    const-string v9, "test"

    const-string v10, "UTF-8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 94
    .local v3, "inData":[B
    array-length v9, v3

    new-array v4, v9, [B

    .line 95
    .local v4, "outData":[B
    new-instance v7, Ljava/io/File;

    const-string v9, "UnityAdsTest.txt"

    invoke-direct {v7, p1, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 97
    .local v7, "testFile":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 98
    .local v2, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 99
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 100
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 102
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 103
    .local v1, "fis":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    array-length v10, v4

    invoke-virtual {v1, v4, v9, v10}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    .line 104
    .local v5, "readCount":I
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 106
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v9

    if-nez v9, :cond_2

    .line 107
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to delete testfile "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "inData":[B
    .end local v4    # "outData":[B
    .end local v5    # "readCount":I
    .end local v7    # "testFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unity Ads exception while testing cache directory "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "inData":[B
    .restart local v4    # "outData":[B
    .restart local v5    # "readCount":I
    .restart local v7    # "testFile":Ljava/io/File;
    :cond_2
    :try_start_1
    array-length v9, v4

    if-eq v5, v9, :cond_3

    .line 112
    const-string v9, "Read buffer size mismatch"

    invoke-static {v9}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 116
    :cond_3
    new-instance v6, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v6, v4, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 118
    .local v6, "result":Ljava/lang/String;
    const-string v9, "test"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 119
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 121
    :cond_4
    const-string v9, "Read buffer content mismatch"

    invoke-static {v9}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
